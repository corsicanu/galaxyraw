.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$DK6GHSFnp8OIjIyMYdu6JjEhCzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$DK6GHSFnp8OIjIyMYdu6JjEhCzA;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$DK6GHSFnp8OIjIyMYdu6JjEhCzA;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->lambda$doInBackground$0$ImageViewPagerAdapter$LoadFullImageBitmapTask()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
