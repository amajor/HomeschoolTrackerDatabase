# HomeschoolTrackerDatabase
 A MySQL database that holds personalized homeschool curriculum.

## Requirements

* mySQL
* MySQL Command-Line Client
  * For Macs --> `brew install mysql`

## Build and Populate

There is a seed script that will create the schema, tables, and fill with data.

```sh
./seed.sh
```

## Notes

Restarting MySQL on a Mac

```
brew services restart mysql
```
