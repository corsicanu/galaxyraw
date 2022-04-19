.class public Lcom/samsung/android/app/galaxyraw/core2/database/tables/FilesTable;
.super Ljava/lang/Object;
.source "FilesTable.java"


# static fields
.field public static final BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field public static final DATETIME:Ljava/lang/String; = "datetime"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final FILES_TABLE_FORMAT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS files(_id INTEGER PRIMARY KEY AUTOINCREMENT,media_id INTEGER,sec_media_id INTEGER,_data TEXT,volume_name TEXT,title TEXT,_display_name TEXT,bucket_id TEXT,bucket_display_name TEXT,group_id INTEGER,_size INTEGER,datetime INTEGER,datetaken INTEGER,date_modified INTEGER,latitude DOUBLE,longitude DOUBLE,orientation INTEGER DEFAULT 0,media_type INTEGER,sef_file_type INTEGER DEFAULT 0,mime_type TEXT,width INTEGER,height INTEGER,is_drm INTEGER  )"

.field public static final FILES_TABLE_NAME:Ljava/lang/String; = "files"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DRM:Ljava/lang/String; = "is_drm"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final SEC_MEDIA_ID:Ljava/lang/String; = "sec_media_id"

.field public static final SEF_FILE_TYPE:Ljava/lang/String; = "sef_file_type"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VOLUME_NAME:Ljava/lang/String; = "volume_name"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
