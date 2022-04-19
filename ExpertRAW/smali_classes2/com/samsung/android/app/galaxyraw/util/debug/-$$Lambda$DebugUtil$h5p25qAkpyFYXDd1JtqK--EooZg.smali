.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$h5p25qAkpyFYXDd1JtqK--EooZg;->f$2:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/galaxyraw/util/debug/DebugUtil;->lambda$checkLoggingDuration$1(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    return-void
.end method
