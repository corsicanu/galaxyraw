.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "progress",
            "fromUser"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onEvSliderChanged(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onStartEvSliderTouch()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onStopEvSliderTouch()V

    return-void
.end method
