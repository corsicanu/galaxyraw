.class public Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ImageViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewPagerAdapter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

.field private final mImageViewPagerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "imageViewPagerItems",
            "imageViewEventListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mImageViewPagerItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    check-cast p3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;

    iget-object p0, p3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 p0, -0x2

    return p0
.end method

.method public getPrimaryImageView()Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mPrimaryViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setOrientation(I)V

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageViewEventListener(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOrientation()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v3, v2

    const-wide v5, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v3, v5

    double-to-int v3, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getOrientation()I

    move-result v5

    invoke-static {v4, v2, v3, v5}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->loadBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080619

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->disableZoom()V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_temp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->disableZoom()V

    :cond_2
    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$1;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    const/4 p2, 0x1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    aput-object v1, v5, p2

    invoke-virtual {v4, p0, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->displayImage:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    check-cast p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;

    iget-object p0, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;->imageLayout:Landroid/widget/LinearLayout;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setOrientation(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    check-cast p3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->mPrimaryViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerItemBinding;

    return-void
.end method
