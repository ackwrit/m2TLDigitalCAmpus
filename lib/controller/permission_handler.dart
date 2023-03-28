import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
class PermissionHandler{
  start() async{
    //lancer au
    if(defaultTargetPlatform == TargetPlatform.iOS){
      PermissionStatus photoPermission = await Permission.photos.status;
      checkStatusPhotos(photoPermission);

    }
    else
      {
        PermissionStatus storagePermission = await Permission.storage.status;
        checkStatusStorage(storagePermission);
      }


  }

  Future <Permission>checkStatusPhotos(PermissionStatus permissionStatus) async{
    switch(permissionStatus){
      case PermissionStatus.permanentlyDenied :
      case PermissionStatus.denied :
      case PermissionStatus.limited:
      case PermissionStatus.restricted:
      case PermissionStatus.granted:
      default :
    }

  }



  Future<PermissionStatus>checkStatusStorage(PermissionStatus permissionStatus) async{
    switch(permissionStatus){
      case PermissionStatus.permanentlyDenied :
      case PermissionStatus.denied :
      case PermissionStatus.limited:
      case PermissionStatus.restricted:
      case PermissionStatus.granted:
      default :

    }





}