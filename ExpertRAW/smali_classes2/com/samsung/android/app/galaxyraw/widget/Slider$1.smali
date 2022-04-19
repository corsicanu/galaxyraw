.class Lcom/samsung/android/app/galaxyraw/widget/Slider$1;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/Slider;->initialize(IIZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/Slider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$000(Lcom/samsung/android/app/galaxyraw/widget/Slider;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$100(Lcom/samsung/android/app/galaxyraw/widget/Slider;)I

    move-result p2

    div-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderLevel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->invalidate()V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$300(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$300(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;->onProgressChanged(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$400(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$400(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;->onStartTrackingTouch()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$000(Lcom/samsung/android/app/galaxyraw/widget/Slider;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$100(Lcom/samsung/android/app/galaxyraw/widget/Slider;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$502(Lcom/samsung/android/app/galaxyraw/widget/Slider;I)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$500(Lcom/samsung/android/app/galaxyraw/widget/Slider;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$100(Lcom/samsung/android/app/galaxyraw/widget/Slider;)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$400(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/Slider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->access$400(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;->onStopTrackingTouch()V

    :cond_0
    return-void
.end method
