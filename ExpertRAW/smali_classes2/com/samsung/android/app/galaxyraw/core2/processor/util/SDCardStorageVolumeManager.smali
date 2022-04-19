.class public Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;
.super Ljava/lang/Object;
.source "SDCardStorageVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static mSdCardStorageVolumeFsUuid:Ljava/lang/String;

.field private static final mSdCardStorageVolumeLock:Ljava/lang/Object;

.field private static mSdCardStorageVolumePath:Ljava/lang/String;


# instance fields
.field private final mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method static synthetic access$000(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->isSDCardStoragePath(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static getSdCardStorageVolumeFsUuid()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeFsUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isSDCardStoragePath(Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p0, v1}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isSdCardStorageVolumeInfoLoaded()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeFsUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public refreshSDCardStorageVolumeInfo()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumePath:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeFsUuid:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumePath:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeFsUuid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumePath:Ljava/lang/String;

    if-nez p0, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeFsUuid:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "refreshSDCardStorageVolumeInfo - SdCardStorageVolumePath %s, SdCardStorageVolumeFsUuid %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->mSdCardStorageVolumeFsUuid:Ljava/lang/String;

    aput-object v4, v3, p0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
