  Nomenclature.getLogData = ->
    files = [
      'scripts/logs/ereca.log'
      'scripts/logs/seg-tree.log'
      'scripts/logs/seg-ess.log'
      'scripts/logs/dpa.log'
      'scripts/logs/clean-old-tables.log'
    ]

    filePromises = _.map files, (file) ->
      fs.readFileAsync(file, {encoding: 'utf-8'})
      .catch (error) -> ''

    Promise.all filePromises
