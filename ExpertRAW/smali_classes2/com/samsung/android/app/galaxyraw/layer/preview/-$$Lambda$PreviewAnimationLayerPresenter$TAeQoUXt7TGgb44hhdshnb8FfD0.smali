.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;->f$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;->f$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->lambda$onPreviewSnapShotTaken$0$PreviewAnimationLayerPresenter(Landroid/graphics/Bitmap;)V

    return-void
.end method
