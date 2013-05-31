using System.IO;
using System.Linq;
using NDbUnit.Core;
using NDbUnit.Core.SqlClient;

namespace DatabaseCleaner
{
    public class DatabaseCleaner
    {
        private SqlDbUnitTest _connection;
        private const string DatasetsDatasetXsd = @"Datasets\Dataset.xsd";
        private const string DatasetDir = "./Datasets/";

        private bool DatasetPathExists(string datasetFile)
        {
            if (File.Exists(datasetFile))
                return true;
            throw new FileNotFoundException(DatasetDir + datasetFile + " do not exist");
        }

        public DatabaseCleaner ConnectTo(string connectionString)
        {
            _connection = new SqlDbUnitTest(connectionString);
            return this;
        }

        public void CleanAndInsert(string datasetFile)
        {
            if (!DatasetPathExists(datasetFile)) return;
            ExecuteDatabaseOperation(datasetFile, DbOperationFlag.CleanInsert);
        }

        public void Delete(string datasetFile)
        {
            if (!DatasetPathExists(datasetFile)) return;
            ExecuteDatabaseOperation(datasetFile, DbOperationFlag.DeleteAll);
        }

        public void Delete(string[] datasetFiles)
        {
            foreach (var datasetFile in datasetFiles.Where(DatasetPathExists))
            {
                ExecuteDatabaseOperation(datasetFile, DbOperationFlag.DeleteAll);
            }
        }

        public void CleanAndInsert(string[] datasetFiles)
        {
            foreach (var datasetFile in datasetFiles.Where(DatasetPathExists))
            {
                ExecuteDatabaseOperation(datasetFile, DbOperationFlag.CleanInsert);
            }
        }

        private void ExecuteDatabaseOperation(string datasetFile, DbOperationFlag operation)
        {
            _connection.ReadXmlSchema(DatasetsDatasetXsd);
            _connection.ReadXml(datasetFile);
            _connection.PerformDbOperation(operation);
        }
    }
}
