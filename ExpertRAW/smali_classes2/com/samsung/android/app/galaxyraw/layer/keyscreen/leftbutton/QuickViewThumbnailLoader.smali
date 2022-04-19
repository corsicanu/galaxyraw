.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;
.super Ljava/lang/Object;
.source "QuickViewThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickViewThumbnailLoader"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mQuickViewThumbnailLoadListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;

.field private mThumbnailLoaderTask:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;Z)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->getThumbnailBitmap(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->getCroppedThumbnailBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mQuickViewThumbnailLoadListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;

    return-object p0
.end method

.method private cancelThumbnailLoaderTask()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mThumbnailLoaderTask:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const-string v0, "QuickViewThumbnailLoader"

    const-string v1, "cancelThumbnailLoaderTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mThumbnailLoaderTask:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mThumbnailLoaderTask:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    :cond_1
    return-void
.end method

.method private getCroppedThumbnailBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "orientation",
            "isNewThumbnail"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "QuickViewThumbnailLoader"

    const-string p1, "thumbnail bitmap is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704a5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_1

    int-to-float p1, p2

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getRoundedBitmapUsingBitmapShader(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getThumbnail(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latestMedia"
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->isImageType()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getImageThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getThumbnailBitmap(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "latestMedia",
            "isSecureCamera"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "QuickViewThumbnailLoader"

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "getThumbnailBitmap : secure uri list is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string p2, "getThumbnailBitmap : check if secure uri is exist and reset uri list"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->updateSecureUriList()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "getThumbnailBitmap : secure uri list is empty after update"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->getThumbnail(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->getThumbnail(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    const-string p2, "getThumbnailBitmap : current latest media uri has broken image"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->isImageType()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f080619

    goto :goto_1

    :cond_4
    const p1, 0x7f08061b

    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method


# virtual methods
.method loadQuickViewThumbnail()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->cancelThumbnailLoaderTask()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mThumbnailLoaderTask:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method loadQuickViewThumbnail(Landroid/graphics/Bitmap;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "orientation",
            "isScaleAnimationRequired"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->cancelThumbnailLoaderTask()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mThumbnailLoaderTask:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;

    invoke-direct {v2, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;-><init>(Landroid/graphics/Bitmap;IZ)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method release()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->cancelThumbnailLoaderTask()V

    return-void
.end method

.method setQuickViewThumbnailLoadListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->mQuickViewThumbnailLoadListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;

    return-void
.end method
