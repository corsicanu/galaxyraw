.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

.field public final synthetic f$1:Ljava/util/concurrent/locks/Condition;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;->f$1:Ljava/util/concurrent/locks/Condition;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;->f$2:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;->f$1:Ljava/util/concurrent/locks/Condition;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;->f$2:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->lambda$notifySequenceStateChanged$1$PostProcessor$PostProcessThread(Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    return-void
.end method
