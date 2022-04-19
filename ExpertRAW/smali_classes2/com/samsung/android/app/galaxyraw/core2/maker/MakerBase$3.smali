.class Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;
.super Ljava/lang/Thread;
.source "MakerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->startInitializeMakerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "name"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-initMaker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "run InitializeMakerThread"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->initializeMaker()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method
