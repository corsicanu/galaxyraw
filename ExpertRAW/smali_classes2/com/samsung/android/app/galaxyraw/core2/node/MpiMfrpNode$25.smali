.class Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;
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
        "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onPostEventFromNative(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$702(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "mMpiMfrpSemanticMapNativeCallback: SemanticMap is null."

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$702(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    :goto_0
    return-void
.end method

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;->onPostEventFromNative(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
