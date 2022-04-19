.class Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;
.super Ljava/util/HashMap;
.source "WatchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/WatchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;",
        "Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$P3RzpNTiIn-uHKeIHAeivW8VynY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$P3RzpNTiIn-uHKeIHAeivW8VynY;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CAMERA_TERMINATED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$JOa869ST7kIvNlITBD41cIAt-C4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$JOa869ST7kIvNlITBD41cIAt-C4;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_CURRENT_STATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$XGS70ZEwFKuTQF-A5Fk7t_1CZ5s;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$XGS70ZEwFKuTQF-A5Fk7t_1CZ5s;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_THUMBNAIL_UPDATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$APm3z4NV-4Yt_F6_MEjdWHFiUow;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$APm3z4NV-4Yt_F6_MEjdWHFiUow;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_CAMERA_SETTING_ACTIVITY_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$cY-f7VeVprtpLr4CGRr8qoX0fIw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$cY-f7VeVprtpLr4CGRr8qoX0fIw;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_RESUMED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$cp4hxPmFwGMQ_r4oTEpXKf0sdgM;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$cp4hxPmFwGMQ_r4oTEpXKf0sdgM;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$TQYp_pB2Ee8twT8pHJqnj6sXQeQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$TQYp_pB2Ee8twT8pHJqnj6sXQeQ;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_PAUSED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$pW3NrCrERlKnbktbkomOM9ShHGM;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$pW3NrCrERlKnbktbkomOM9ShHGM;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_STOPPED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$oY8naDCq6cA0PXlI0KJChSJc09k;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$oY8naDCq6cA0PXlI0KJChSJc09k;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_ZOOM_RANGE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$k3SDBuQOEgBp8s_QFOKfe2kItCQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$2$k3SDBuQOEgBp8s_QFOKfe2kItCQ;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->size()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->values()[Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventHandlerMap initialization : EventId size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->values()[Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Map size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public synthetic lambda$new$0$WatchServiceManager$2()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Z)V

    return-void
.end method

.method public synthetic lambda$new$1$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$800(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$2$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$3$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$4$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$5$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$6$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$7$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$8$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$new$9$WatchServiceManager$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$000(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method
