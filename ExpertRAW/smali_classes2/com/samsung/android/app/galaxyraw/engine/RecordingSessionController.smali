.class public Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;
.super Ljava/lang/Object;
.source "RecordingSessionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RecordingDataController"


# instance fields
.field private final mFacingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMainIndex:I

.field private final mMediaRecorderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumOfMediaRecorder:I

.field private final mPersistentSurfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isDualRecorderRequired",
            "facing"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMainIndex:I

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNumOfMediaRecorder:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mPersistentSurfaceList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFacingList:Ljava/util/ArrayList;

    move p1, v0

    :goto_1
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNumOfMediaRecorder:I

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mPersistentSurfaceList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFacingList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFacingList:Ljava/util/ArrayList;

    if-ne p2, v1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic lambda$cleanupFile$0(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$cleanupNextTempFile$1(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$cleanupTempFile$2(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$closeFileDescriptor$3(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$closeNextFileDescriptor$4(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$makeHighLightVideo$5(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->makeHighLightVideoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$releaseMediaRecorder$6(Landroid/media/MediaRecorder;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$releaseMediaRecorder$7(Landroid/view/Surface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$resetMediaRecorder$8(Landroid/media/MediaRecorder;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method cleanupFile()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method cleanupNextTempFile()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$xDyHOum3JmYAriq5V3AYatQGE7Q;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$xDyHOum3JmYAriq5V3AYatQGE7Q;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method cleanupTempFile()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$1pKU1p3MtXdzlnqahIvptIrICUY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$1pKU1p3MtXdzlnqahIvptIrICUY;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method closeFileDescriptor()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$DkV_na39dQ2IgML2E8kFOSzJSls;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$DkV_na39dQ2IgML2E8kFOSzJSls;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method closeNextFileDescriptor()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method createMediaRecorder()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNumOfMediaRecorder:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getFacing(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFacingList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    return-object p0
.end method

.method getMainIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMainIndex:I

    return p0
.end method

.method getMediaRecorder(I)Landroid/media/MediaRecorder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRecorder;

    return-object p0
.end method

.method getMediaRecorderList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    return-object p0
.end method

.method getNextFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    return-object p0
.end method

.method getNumberOfMediaRecorder()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNumOfMediaRecorder:I

    return p0
.end method

.method getRecordingSurface(I)Landroid/view/Surface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mPersistentSurfaceList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method makeHighLightVideo()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$QJtOu5UUznYWqB3q6GPqnnuglXk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$QJtOu5UUznYWqB3q6GPqnnuglXk;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method releaseMediaRecorder()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$RBPqw0LPvCb0JqTPbJDOEytyECY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$RBPqw0LPvCb0JqTPbJDOEytyECY;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mPersistentSurfaceList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method replaceFileInfoToNext()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNumOfMediaRecorder:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->clear()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoMimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mNextFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetMediaRecorder()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMediaRecorderList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$IacVtniPjVRXo6cIjHXKOKxnjOQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$IacVtniPjVRXo6cIjHXKOKxnjOQ;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setFacing(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mFacingList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setMainIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->mMainIndex:I

    return-void
.end method
