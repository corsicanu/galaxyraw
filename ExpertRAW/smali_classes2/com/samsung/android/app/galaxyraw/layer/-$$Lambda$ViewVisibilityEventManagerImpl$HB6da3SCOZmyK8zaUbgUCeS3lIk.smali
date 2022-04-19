.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;->f$0:Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;->f$0:Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->lambda$registerListener$0$ViewVisibilityEventManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;)V

    return-void
.end method
