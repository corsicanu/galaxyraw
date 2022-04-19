.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->startLongEvShotShutterProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$3;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$3;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    return-void
.end method
