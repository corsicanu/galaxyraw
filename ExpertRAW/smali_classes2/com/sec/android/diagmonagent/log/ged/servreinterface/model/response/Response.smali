.class public Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->message:Ljava/lang/String;

    return-void
.end method
