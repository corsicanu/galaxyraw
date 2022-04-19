.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/util/-$$Lambda$PLog$TcnKPWAk83Mtv5l-aJnnAdI-uzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/-$$Lambda$PLog$TcnKPWAk83Mtv5l-aJnnAdI-uzc;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/-$$Lambda$PLog$TcnKPWAk83Mtv5l-aJnnAdI-uzc;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->lambda$removeExceededPLogFiles$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/nio/file/Path;)V

    return-void
.end method
