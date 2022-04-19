.class Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;
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
        "Ljava/lang/Integer;",
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onPostEventFromNative(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$300(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->access$200(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;->onProgress(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;I)V

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

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;->onPostEventFromNative(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
