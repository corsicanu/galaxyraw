.class Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTracker"
.end annotation


# static fields
.field private static me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;


# instance fields
.field tracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public getXVelocity()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0
.end method

.method public getXVelocity(I)F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public getYVelocity()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public getYVelocity(I)F
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    return-void
.end method
