.class Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;
.super Ljava/util/TimerTask;
.source "RecordingTimeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->startSystemTimeTick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$RecordingTimeIndicator$1()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->access$200(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->access$004(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->access$100(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$RecordingTimeIndicator$1$BJpLBJgJz848_r37eiz9Wva1kMQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$RecordingTimeIndicator$1$BJpLBJgJz848_r37eiz9Wva1kMQ;-><init>(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
