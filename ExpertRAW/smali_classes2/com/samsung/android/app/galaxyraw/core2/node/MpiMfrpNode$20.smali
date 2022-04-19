.class Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;
.super Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;
.source "MpiMfrpNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback<",
        "[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "key"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "arg",
            "arg1",
            "arg2"
        }
    .end annotation

    check-cast p1, [B

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;->onPostEventFromNative([BLjava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method

.method public onPostEventFromNative([BLjava/lang/Void;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg",
            "arg1",
            "arg2"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MfrpDebugInfoNativeCallback: debugInfo size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    array-length v0, p1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    array-length p3, p1

    new-array p3, p3, [B

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$102(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;[B)[B

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$100(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)[B

    move-result-object p0

    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MfrpDebugInfoNativeCallback: debugInfo is null."

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$102(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;[B)[B

    :goto_0
    return-void
.end method
