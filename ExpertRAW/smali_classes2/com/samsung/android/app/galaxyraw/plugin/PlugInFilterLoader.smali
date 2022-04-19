.class public Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;
.super Landroid/os/AsyncTask;
.source "PlugInFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_LATEST_UPDATED_FILTER:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.CHECK_LATEST_UPDATED_FILTER"

.field private static final ACTION_SYNC_UPDATED_FILTER_TO_DB:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.SYNC_UPDATED_FILTER_TO_DB"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final DELETED:Ljava/lang/String; = "deleted"

.field private static final FILTER_CHANGE_URI:Landroid/net/Uri;

.field private static final FILTER_NAME:Ljava/lang/String; = "name"

.field private static final FILTER_ORDER:Ljava/lang/String; = "filter_order"

.field private static final FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final FRONT_DELETED:Ljava/lang/String; = "front_deleted"

.field private static final FRONT_FILTER_ORDER:Ljava/lang/String; = "front_filter_order"

.field private static final INDEX_CATEGORY:I = 0x8

.field private static final INDEX_FILENAME:I = 0x2

.field private static final INDEX_FILE_PATH:I = 0xb

.field private static final INDEX_FILTER_ORDER:I = 0x6

.field private static final INDEX_FILTER_TYPE:I = 0x4

.field private static final INDEX_FRONT_FILTER_ORDER:I = 0x7

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_PACKAGE_NAME:I = 0xa

.field private static final INDEX_PRELOAD_FILTER:I = 0xc

.field private static final INDEX_TITLE_ID:I = 0x9

.field private static final INDEX_VENDOR:I = 0x5

.field private static final INDEX_VERSION:I = 0x3

.field private static final LIBRARY_NAME:Ljava/lang/String; = "filename"

.field private static final NOTIFY_INDEX_INSTALL:Ljava/lang/String; = "notifyAdd"

.field private static final NOTIFY_INDEX_SEPARATOR:Ljava/lang/String; = "-"

.field private static final NOTIFY_INDEX_UNINSTALL:Ljava/lang/String; = "notifyDelete"

.field private static final NOTIFY_INDEX_UPDATED:Ljava/lang/String; = "isUpdated"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final RES_NAME:Ljava/lang/String; = "resource_name"

.field private static final TAG:Ljava/lang/String; = "PlugInFilterLoader"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final _ID:Ljava/lang/String; = "_ID"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mFilterDBChangeObserver:Landroid/database/ContentObserver;

.field private mIsFilterLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->BASE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->FILTER_CHANGE_URI:Landroid/net/Uri;

    const-string v1, "_ID"

    const-string v2, "name"

    const-string v3, "filename"

    const-string v4, "version"

    const-string v5, "vendor"

    const-string v6, "filter_type"

    const-string v7, "title"

    const-string v8, "package_name"

    const-string v9, "country"

    const-string v10, "resource_name"

    const-string v11, "category"

    const-string v12, "deleted"

    const-string v13, "filter_order"

    const-string v14, "front_filter_order"

    const-string v15, "front_deleted"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mIsFilterLoaded:Z

    const-string v0, "PlugInFilterLoader"

    const-string v1, "create PlugInFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;-><init>(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mFilterDBChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->FILTER_CHANGE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->handleInstall()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->handleUninstall()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->handleUpdate()V

    return-void
.end method

.method private handleInstall()V
    .locals 2

    const-string v0, "PlugInFilterLoader"

    const-string v1, "handleInstall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->loadPlugInFilter()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.FILTER_INSTALLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private handleUninstall()V
    .locals 3

    const-string v0, "PlugInFilterLoader"

    const-string v1, "handleUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->loadPlugInFilter()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.FILTER_UNINSTALLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->resetSelectedFilterId()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->resetFilterId()V

    :goto_0
    return-void
.end method

.method private handleUpdate()V
    .locals 2

    const-string v0, "PlugInFilterLoader"

    const-string v1, "handleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.NEW_FILTER_UPLOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->resetFilterId()V

    :goto_0
    return-void
.end method

.method private isValidFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "checkValue"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidFilter(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "libName",
            "preload"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->isPreloadFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-eqz p3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p3, 0x80

    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ExternalFilter (package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", libname "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") has been removed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlugInFilterLoader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private loadFilter()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "PlugInFilterLoader"

    const-string v2, "Unnamed filter"

    new-instance v13, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120375

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "Original"

    const-string v9, "Original"

    const/4 v10, 0x0

    const-string v12, ""

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;-><init>(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->addPlugInFilters(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;)V

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "filter_order"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    move v5, v4

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isValidFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isValidFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Unknown FilterType"

    invoke-direct {v0, v6, v8}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isValidFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x5

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v8, "Unknown vendor"

    invoke-direct {v0, v10, v8}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isValidFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    const/16 v8, 0xa

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v8, 0xc

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct {v0, v15, v12, v8}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isValidFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    const/16 v14, 0x9

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v9, "Resources.NotFoundException"

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :catch_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v14, v9

    const-string v9, "Unknown title"

    invoke-direct {v0, v14, v9}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isValidFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id["

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "], title["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "], filterName["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "], preloadFilter["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], libName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterType["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "], vendor["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-object v6, v4

    move v9, v5

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;-><init>(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->addPlugInFilters(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    move v1, v4

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->setFilterLoaded(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_8

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1
.end method

.method private declared-synchronized loadPlugInFilter()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "PlugInFilterLoader"

    const-string v1, "load PlugInFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->setFilterLoaded(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->loadFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetFilterId()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setBackPhotoFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFrontPhotoFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setBackVideoFilter(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFrontVideoFilter(I)V

    return-void
.end method

.method private resetSelectedFilterId()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontVideoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->isUninstalledFilter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFrontVideoFilter(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackVideoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->isUninstalledFilter(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setBackVideoFilter(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontPhotoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->isUninstalledFilter(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFrontPhotoFilter(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackPhotoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->isUninstalledFilter(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setBackPhotoFilter(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setFilterLoaded(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loaded"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mIsFilterLoaded:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->loadPlugInFilter()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isFilterLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mIsFilterLoaded:Z

    return p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "aVoid"
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aVoid"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isFilterLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "camera.action.FILTER_LOADED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->mFilterDBChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->setFilterLoaded(Z)V

    return-void
.end method

.method public declared-synchronized saveOrder(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "currentFilterIdList",
            "previousFilterIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "PlugInFilterLoader"

    const-string v1, "saveOrder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getPlugInFilter(I)Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getDBId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "filter_order"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->BASE_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_ID=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->updateFilterIndex(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "PlugInFilterLoader"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveOrder : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
