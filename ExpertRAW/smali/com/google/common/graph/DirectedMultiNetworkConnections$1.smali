.class Lcom/google/common/graph/DirectedMultiNetworkConnections$1;
.super Lcom/google/common/graph/MultiEdgesConnecting;
.source "DirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedMultiNetworkConnections;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/MultiEdgesConnecting<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/DirectedMultiNetworkConnections;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;->this$0:Lcom/google/common/graph/DirectedMultiNetworkConnections;

    iput-object p4, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;->val$node:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/MultiEdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;->this$0:Lcom/google/common/graph/DirectedMultiNetworkConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->access$000(Lcom/google/common/graph/DirectedMultiNetworkConnections;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;->val$node:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
