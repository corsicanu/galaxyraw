.class Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;
.super Ljava/lang/Object;
.source "ExpandableSlider.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->createSeekBarChangeListener(I)Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seslSeekBar",
            "progress",
            "b"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$000(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$100(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)I

    move-result p2

    div-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderLevel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderActiveLevel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->invalidate()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$300(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$300(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;->onProgressChanged(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seslSeekBar"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$400(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->TRACKING:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$402(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderLevel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$600(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$600(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;->onStartTrackingTouch()V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seslSeekBar"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$000(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$100(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$702(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;I)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$700(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$100(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$400(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$402(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderActiveLevel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$3;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$600(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$600(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;->onStopTrackingTouch()V

    :cond_1
    return-void
.end method
