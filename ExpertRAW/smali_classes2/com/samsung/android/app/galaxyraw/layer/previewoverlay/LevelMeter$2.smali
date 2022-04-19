.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LevelMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->startSuccessItemShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->access$002(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->access$002(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
