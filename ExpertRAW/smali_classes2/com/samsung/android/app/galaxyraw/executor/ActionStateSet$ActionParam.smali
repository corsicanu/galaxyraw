.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;
.super Ljava/lang/Object;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionParam"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->value:Ljava/lang/String;

    return-object p0
.end method
