.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;->f$1:F

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;->f$1:F

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;->f$2:F

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->lambda$setTouchFocus$16$WatchServiceManager$4(FF)V

    return-void
.end method
