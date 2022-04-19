.class public Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;
.super Ljava/lang/Object;
.source "ViewVisibilityEventManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;


# instance fields
.field private final mListenerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->mListenerMap:Ljava/util/EnumMap;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->mListenerMap:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$sendViewVisibilityEvent$1(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;ZLcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;->onVisibilityChanged(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public synthetic lambda$registerListener$0$ViewVisibilityEventManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$unregisterListener$2$ViewVisibilityEventManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewIdSet",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$HB6da3SCOZmyK8zaUbgUCeS3lIk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "isVisible"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewIdSet",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$35Tt3Rs_njLZ5_YnWnGrPJfzN3s;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$35Tt3Rs_njLZ5_YnWnGrPJfzN3s;-><init>(Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
