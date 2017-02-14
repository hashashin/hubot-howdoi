# hubot-howdoi [![Build Status](https://img.shields.io/travis/hashashin/hubot-howdoi.svg?maxAge=2592000&style=flat-square)](https://travis-ci.org/hashashin/hubot-howdoi) [![npm](https://img.shields.io/npm/v/hubot-howdoi.svg?maxAge=2592000&style=flat-square)](https://www.npmjs.com/package/hubot-howdoi)

Based on hubot-scripts/howdoi

See [`src/howdoi.coffee`](src/howdoi.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-howdoi --save`

Then add **hubot-howdoi** to your `external-scripts.json`:

```json
["hubot-howdoi"]
```

## Sample Interaction

```
user1>> hubot howdoi date format linux
hubot>> http://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
hubot>> DATE=`date +%Y-%m-%d`
hubot>> DATE=`date +%Y-%m-%d:%H:%M:%S`
hubot>> $man date
```
