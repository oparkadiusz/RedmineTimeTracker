###
 return true if this contains targetStr from searchStartIndex.
###
if not ('contains' in String.prototype)
  String.prototype.contains = (targetStr, searchStartIndex) ->
    return -1 isnt String.prototype.indexOf.call(this, targetStr, searchStartIndex)


###
 return true if this is null or undefined or '' or '  '.
###
if not ('isBlank' in String.prototype)
  String.prototype.isBlank = () ->
    return !this? || this.trim?() is ''


@util = {

  ###
   get url
  ###
  getUrl: (url) ->
    url = $.trim(url)
    url = url.match(/(^https?:\/\/.+?)\//i, "")[1]


}