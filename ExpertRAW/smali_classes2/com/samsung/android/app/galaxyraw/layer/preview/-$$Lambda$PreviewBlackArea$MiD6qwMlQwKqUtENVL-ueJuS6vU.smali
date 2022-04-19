.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;->f$0:Z

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;->f$0:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->lambda$startAreaAnimation$0(ZLandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
