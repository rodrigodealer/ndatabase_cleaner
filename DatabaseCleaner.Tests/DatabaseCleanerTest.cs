using NUnit.Framework;

namespace DatabaseCleaner.Tests
{
    class DatabaseCleanerTest
    {
        [Test]
        public void ShouldClearAndInsert()
        {
            var databaseCleaner = new DatabaseCleaner();
            databaseCleaner.ConnectTo("Server=localhost;Database=database;User Id=user;Password=password;");
            databaseCleaner.CleanAndInsert(@"Datasets\Template.xml");
        }
    }
}
