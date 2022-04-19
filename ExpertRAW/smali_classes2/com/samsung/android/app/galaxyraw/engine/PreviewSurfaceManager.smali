.class Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;
.super Ljava/lang/Object;
.source "PreviewSurfaceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewSurfaceManager"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mDummyImageReaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private final mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mExtraSurfaceView:Landroid/view/SurfaceView;

.field private mFixedSurfaceSize:Landroid/util/Size;

.field private mIsExtraPreviewSurfaceCreated:Z

.field private mIsPreviewSurfaceCreated:Z

.field private mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/Map;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f0a009a

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v1, 0x7f0a009b

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method private handlePixelCopyResult(ILandroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "copyResult",
            "bitmap"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getResizablePreviewOrientation()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotError()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private isResetSurfacePositionRequired()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetSurfacePosition()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->semResetRenderNodePosition()V

    return-void
.end method


# virtual methods
.method createExtraSurface(Landroid/view/SurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraSurfaceView"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExtraSurface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewSurfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method getCurrentPreviewSurface(I)Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMultiCameraPreviewSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    if-eq v0, p1, :cond_3

    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getDummyRecordingSurface(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/view/Surface;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result p2

    const/16 v3, 0x22

    const/4 v4, 0x3

    invoke-static {v2, p2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getExtraPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getExtraSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method getFixedSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method isExtraPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    return p0
.end method

.method isPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    return p0
.end method

.method public synthetic lambda$takePreviewSurfaceSnapshot$0$PreviewSurfaceManager(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->handlePixelCopyResult(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$takePreviewSurfaceSnapshot$1$PreviewSurfaceManager(Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p3, p1, p2, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void
.end method

.method setFixedSurfaceSize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->isResetSurfacePositionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->resetSurfacePosition()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method start()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const-string v0, "CreateSurface"

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface - CreateSurface : Start["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method takePreviewSurfaceSnapshot()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getResizablePreviewOrientation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v2, v0

    :cond_2
    new-instance v0, Landroid/view/Surface;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
