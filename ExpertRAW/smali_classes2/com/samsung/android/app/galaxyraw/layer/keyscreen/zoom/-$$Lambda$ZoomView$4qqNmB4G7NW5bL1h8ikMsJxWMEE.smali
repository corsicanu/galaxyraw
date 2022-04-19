.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;JLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$1:J

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$2:Ljava/util/ArrayList;

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$1:J

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$2:Ljava/util/ArrayList;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$startHandler$16$ZoomView(JLjava/util/ArrayList;I)V

    return-void
.end method
