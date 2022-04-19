.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavingDraftImageTask"
.end annotation


# instance fields
.field private mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mExtraBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

.field private final mResultFilePath:Ljava/nio/file/Path;

.field private final mSequenceId:I

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "processRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_RESULT_FILE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mResultFilePath:Ljava/nio/file/Path;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mExtraBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "saveDraftImageTask - run E"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$800()Ljava/nio/file/Path;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->createDirectories(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveDraftImageTask - draftJpegSize  : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    const v6, 0x48454946

    if-ne v0, v6, :cond_0

    const-string v0, "heic"

    goto :goto_0

    :cond_0
    const-string v0, "jpg"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$800()Ljava/nio/file/Path;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v9, "%s_temp.%s"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mResultFilePath:Ljava/nio/file/Path;

    new-array v12, v5, [Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->getFileName(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    aput-object v0, v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v6, "rw-rw----"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->regeneratePathIfExistsAndCreate(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-interface {v15}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$800()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v8, "!@#$%%^%s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-interface {v15}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v6, "rw-rw----"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->createFile(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v16

    monitor-enter v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v6, "saveDraftImageTask - synchronized(mSequenceIdDraftImageFileInfoMap) E"

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v0

    iget v6, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->REMOVE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    if-ne v0, v6, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "saveDraftImageTask - get late draft image and remove"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-array v0, v3, [Ljava/nio/file/Path;

    aput-object v15, v0, v5

    aput-object v14, v0, v4

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->access$2500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_1
    return-void

    :cond_2
    :try_start_7
    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->refreshSDCardStorageVolumeInfo()V

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;

    invoke-interface {v14}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;-><init>(Ljava/io/File;)V

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mResultFilePath:Ljava/nio/file/Path;

    invoke-interface {v8}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v12, v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;-><init>(Ljava/io/File;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v11

    move-object v8, v12

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->createContentValues(Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;ZLandroid/util/Size;I)Landroid/content/ContentValues;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2800()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "sec_media_id"

    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    goto :goto_1

    :cond_3
    const-wide/16 v9, -0x1

    :goto_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/database/DatabaseHelper;->CORE2_FILES_TABLE_URI:Landroid/net/Uri;

    invoke-static {v8, v9, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-boolean v9, v12, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->isSDCardStorageFile:Z

    invoke-static {v8, v7, v9}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v17

    new-instance v13, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mResultFilePath:Ljava/nio/file/Path;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v8, v13

    move-object/from16 v9, v17

    move-object v10, v6

    move-object v11, v7

    move-object/from16 v18, v12

    move-object v12, v15

    move-object v3, v13

    move-object v13, v14

    move-object/from16 v19, v14

    move-object/from16 v14, v18

    :try_start_8
    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    if-ne v0, v8, :cond_4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v8, "saveDraftImageTask - get late draft image and recovery"

    invoke-static {v0, v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v0

    iget v3, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v0

    iget v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v3, "saveDraftImageTask - synchronized(mSequenceIdDraftImageFileInfoMap) X"

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_5
    :try_start_9
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "%s||%s||%s||%s||%s||%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v17, v8, v5

    aput-object v2, v8, v4

    const/4 v2, 0x2

    aput-object v15, v8, v2

    const/4 v2, 0x3

    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mResultFilePath:Ljava/nio/file/Path;

    aput-object v9, v8, v2

    const/4 v2, 0x4

    aput-object v6, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    invoke-static {v0, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveDraftImageTask - fakeDraftImageFileData : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-array v2, v4, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v5

    move-object/from16 v3, v19

    invoke-static {v3, v0, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDraftImageTask is failed during writing fakeDraftImageFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_3
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mResultFilePath:Ljava/nio/file/Path;

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    move-result-object v1

    invoke-static {v0, v2, v7, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->access$3100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILandroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "saveDraftImageTask - run X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v14

    :goto_4
    :try_start_a
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, v14

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_c
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDraftImageTask - fakeDraftImageFile\'s createFile is failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v3, "can\'t create fakeDraftImageFilePath"

    invoke-direct {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catch_4
    move-exception v0

    move-object v3, v2

    :goto_5
    move-object v2, v15

    goto :goto_6

    :catch_5
    move-exception v0

    :try_start_d
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDraftImageTask - realDraftImageFile\'s regenerate file path is failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v3, "can\'t create realDraftImageFilePath"

    invoke-direct {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SavingDraftImageTask - create secure directory is failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v3, "can\'t create secureDirectory"

    invoke-direct {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catch_7
    move-exception v0

    move-object v3, v2

    :goto_6
    :try_start_e
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveDraftImageTask is failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/nio/file/Path;

    aput-object v2, v0, v5

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->access$2500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_6
    return-void

    :goto_7
    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_7
    throw v0
.end method
