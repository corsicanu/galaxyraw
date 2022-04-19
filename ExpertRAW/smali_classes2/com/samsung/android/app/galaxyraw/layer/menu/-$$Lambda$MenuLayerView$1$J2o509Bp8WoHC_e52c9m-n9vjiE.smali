.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;ILandroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$1$J2o509Bp8WoHC_e52c9m-n9vjiE;->f$2:Landroid/view/KeyEvent;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$1;->lambda$onKeyUp$1(Ljava/util/concurrent/atomic/AtomicBoolean;ILandroid/view/KeyEvent;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;)V

    return-void
.end method
