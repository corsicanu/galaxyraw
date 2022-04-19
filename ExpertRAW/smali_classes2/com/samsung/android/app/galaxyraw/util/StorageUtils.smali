.class public Lcom/samsung/android/app/galaxyraw/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0xc800000L

.field public static final LOW_STORAGE_THRESHOLD_FOR_RECORDING:J = 0x1e00000L

.field public static final LOW_STORAGE_THRESHOLD_FOR_SINGLE_TAKE:J = 0x3e800000L

.field public static final SINGLE_TAKE_STORAGE_LOW:I = 0x1

.field public static final SINGLE_TAKE_STORAGE_OK:I = 0x0

.field public static final SINGLE_TAKE_STORAGE_ULTRA_LOW:I = 0x2

.field public static final STORAGE_STATUS_LOW:I = 0x2

.field public static final STORAGE_STATUS_NONE:I = 0x3

.field public static final STORAGE_STATUS_NOT_INITIALIZED:I = 0x0

.field public static final STORAGE_STATUS_OK:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "StorageUtils"

.field public static final ULTRA_LOW_STORAGE_THRESHOLD_FOR_SINGLE_TAKE:J = 0x1f400000L

.field private static mSdStorageStatus:I

.field private static mSdStorageVolumeFsUuid:Ljava/lang/String;

.field private static mSdStorageVolumePath:Ljava/lang/String;

.field private static mStorageLatch:Ljava/util/concurrent/CountDownLatch;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mStorageStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumePath:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumeFsUuid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearExternalSDStoragePath()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumePath:Ljava/lang/String;

    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storage"
        }
    .end annotation

    const-wide/16 v0, -0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-string v6, "StorageUtils"

    if-ne p0, v3, :cond_1

    :try_start_0
    sget-object v7, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v3, "getAvailableStorage : Wait timeout for storage latch"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setStorageStatus(II)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_0
    sget-object v7, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumePath:Ljava/lang/String;

    goto :goto_0

    :catch_0
    const-string p0, "getAvailableStorage : interrupted"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    :try_start_1
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v0, v6

    const-wide/32 v6, 0xc800000

    sub-long/2addr v0, v6

    cmp-long v2, v0, v4

    if-gtz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    move-wide v4, v0

    :goto_1
    invoke-static {p0, v3}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setStorageStatus(II)V

    return-wide v4

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot stat the filesystem then we don\'t know how many free bytes exist, storage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setStorageStatus(II)V

    return-wide v0
.end method

.method public static getCachedStorageStatus(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageStatus:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid storage ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageStatus:I

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedStorageStatus storage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", storageStatus : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StorageUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid storage status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "storage"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumeFsUuid:Ljava/lang/String;

    const-string v0, "external"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMaxSizeOfImage(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1194

    div-long/2addr v0, v2

    const-wide/16 v2, 0x96

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x50

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRemainCount(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "storage",
            "resolution"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemainCount lAvailableStorage : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "StorageUtils"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getMaxSizeOfImage(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)J

    move-result-wide p0

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static getRemainTimeInMS(II)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "storage",
            "bitrate"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    return-wide v2

    :cond_0
    div-int/lit8 p1, p1, 0x8

    int-to-long p0, p1

    div-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static getSdCardStorageVolumeFsUuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumeFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getStorageStatusForSingleTake()I
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v0

    const-wide/32 v0, 0x1f400000

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x3e800000

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStorageStatusForSingleTake storageDirectory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainStorage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method public static getUpdatedStorageStatus(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storage"
        }
    .end annotation

    const-string v0, "StorageUtils"

    const-string v1, "getUpdatedStorageStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget p0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageStatus:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageStatus:I

    :goto_0
    return p0
.end method

.method public static isExternalSdStorageAvailable()Z
    .locals 2

    const-string v0, "StorageUtils"

    const-string v1, "isExternalSdStorageAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExternalSdStorageMounted()Z
    .locals 6

    const-string v0, "StorageUtils"

    const-string v1, "isExternalSdStorageMounted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "isExternalSdStorageMounted : Wait timeout for storage latch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumePath:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "isExternalSdStorageMounted : mSdStorageVolumePath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v1, "isExternalSdStorageMounted : interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isUnlimitedVideoFileSizeSupported(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storageType"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "sys.ext_sdcard.fstype"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "vfat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "StorageUtils"

    const-string v0, "isUnlimitedFileSizeSupported return -- using vFAT file system"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static setExternalSDStorageVolume(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "StorageUtils"

    const-string v1, "setExternalSDStorageVolume : Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    sput-object p0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object p0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->clearExternalSDStoragePath()V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez p0, :cond_0

    const-string p0, "setExternalSDStorageVolume : Failed to get storage manager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "Media is mounted at its mount point with read-only access"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumePath:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumeFsUuid:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageVolumeFsUuid:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string p0, "setExternalSDStorageVolume : End"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setStorageStatus(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "storage",
            "status"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStorageStatus storage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sput p1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mSdStorageStatus:I

    goto :goto_0

    :cond_0
    sput p1, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->mStorageStatus:I

    :goto_0
    return-void
.end method
