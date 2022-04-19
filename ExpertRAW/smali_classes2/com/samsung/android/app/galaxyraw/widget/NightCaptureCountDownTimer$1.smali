.class Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;
.super Ljava/util/TimerTask;
.source "NightCaptureCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->startSystemTimeTick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$NightCaptureCountDownTimer$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->access$000(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->access$000(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->access$100(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remain time(s) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->access$000(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightCaptureCountDownTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->access$010(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)I

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$NightCaptureCountDownTimer$1$A2ALefyz56vkrqKXaddklB_C6PQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$NightCaptureCountDownTimer$1$A2ALefyz56vkrqKXaddklB_C6PQ;-><init>(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
