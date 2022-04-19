.class Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;
.super Landroid/os/AsyncTask;
.source "ImageViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFullImageBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)V

    return-void
.end method

.method static synthetic lambda$doInBackground$1([Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    aget-object v1, p0, v0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    aget-object p0, p0, v0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->refreshImageMatrix()V

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
            "params"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getOrientation()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->loadBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$DK6GHSFnp8OIjIyMYdu6JjEhCzA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$DK6GHSFnp8OIjIyMYdu6JjEhCzA;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->access$100(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;-><init>([Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$doInBackground$0$ImageViewPagerAdapter$LoadFullImageBitmapTask()Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->access$100(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080619

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
