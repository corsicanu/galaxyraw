.class Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$1;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$1;->this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1$1;->this$1:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
