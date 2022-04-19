.class Lcom/samsung/android/app/galaxyraw/widget/ProShutter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->startShutterAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/ProShutter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->access$000(Lcom/samsung/android/app/galaxyraw/widget/ProShutter;)V

    return-void
.end method
