.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vTIY7xoSJioN89jzLeQrGkKqrjk;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vTIY7xoSJioN89jzLeQrGkKqrjk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vTIY7xoSJioN89jzLeQrGkKqrjk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->lambda$processPicture$4(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V

    return-void
.end method
