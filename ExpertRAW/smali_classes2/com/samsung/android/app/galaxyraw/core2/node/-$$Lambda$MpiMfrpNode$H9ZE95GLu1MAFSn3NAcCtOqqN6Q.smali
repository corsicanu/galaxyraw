.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$H9ZE95GLu1MAFSn3NAcCtOqqN6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$H9ZE95GLu1MAFSn3NAcCtOqqN6Q;->f$0:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$H9ZE95GLu1MAFSn3NAcCtOqqN6Q;->f$0:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->lambda$processPicture$6(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;[B)V

    return-void
.end method
