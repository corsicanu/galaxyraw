.class interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;
.super Ljava/lang/Object;
.source "QuickViewThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "QuickViewThumbnailLoadListener"
.end annotation


# virtual methods
.method public abstract onQuickViewThumbnailEmpty()V
.end method

.method public abstract onQuickViewThumbnailLoaded(Landroid/graphics/Bitmap;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "isScaleAnimationRequired"
        }
    .end annotation
.end method
