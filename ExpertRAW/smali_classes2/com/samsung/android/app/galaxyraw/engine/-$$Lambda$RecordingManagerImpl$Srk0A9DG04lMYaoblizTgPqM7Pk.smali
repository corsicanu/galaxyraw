.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;->f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;->f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;->f$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;->f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->lambda$registerVideo$15$RecordingManagerImpl(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V

    return-void
.end method
