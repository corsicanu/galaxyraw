.class Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LensTabMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->refreshTab(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;Z)V

    return-void
.end method
