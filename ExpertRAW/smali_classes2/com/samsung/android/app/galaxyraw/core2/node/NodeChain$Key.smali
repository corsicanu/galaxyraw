.class public abstract Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
.super Ljava/lang/Object;
.source "NodeChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputData_T:",
        "Ljava/lang/Object;",
        "OutputData_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mId:I

.field private final mInputDataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TInputData_T;>;"
        }
    .end annotation
.end field

.field private final mOutputDataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TOutputData_T;>;"
        }
    .end annotation
.end field

.field private final mPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TInputData_T;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "portType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TInputData_T;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ReflectionUtils;->getGenericSuperParameterClass(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mInputDataClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ReflectionUtils;->getGenericSuperParameterClass(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mOutputDataClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mId:I

    return p0
.end method

.method public getInputDataClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TInputData_T;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mInputDataClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getOutputDataClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TOutputData_T;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mOutputDataClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TInputData_T;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->mPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    return-object p0
.end method
