.class Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;->this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;->this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderLevel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;->this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$2;->this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderActiveLevel:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$500(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;Landroid/widget/TextView;)V

    return-void
.end method
