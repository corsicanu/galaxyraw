.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "ProSliderContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "eventType"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
