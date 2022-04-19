.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;
.super Ljava/lang/Object;
.source "ProHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateLabelViews(Landroid/util/Range;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$1000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->textLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$1100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$700(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$1200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    return-void
.end method
