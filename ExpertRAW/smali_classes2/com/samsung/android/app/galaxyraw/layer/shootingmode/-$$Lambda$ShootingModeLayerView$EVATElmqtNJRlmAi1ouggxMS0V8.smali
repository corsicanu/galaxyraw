.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/shootingmode/-$$Lambda$ShootingModeLayerView$EVATElmqtNJRlmAi1ouggxMS0V8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/-$$Lambda$ShootingModeLayerView$EVATElmqtNJRlmAi1ouggxMS0V8;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/-$$Lambda$ShootingModeLayerView$EVATElmqtNJRlmAi1ouggxMS0V8;->f$0:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->lambda$onOrientationChanged$0(ILcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;)V

    return-void
.end method
