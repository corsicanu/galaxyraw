.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ZoomHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomScrollViewAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "info"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p0, 0x2000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "action",
            "args"
        }
    .end annotation

    const/16 v0, 0x1000

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$OMyUIA29NnkCrzJ9zawKg0k8r6w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$OMyUIA29NnkCrzJ9zawKg0k8r6w;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$_C2fhaHNuRSZjl42pjg7pJwmhT4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$_C2fhaHNuRSZjl42pjg7pJwmhT4;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1
.end method
