.class public Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;
.super Ljava/lang/Object;
.source "DiagmonClient.java"


# instance fields
.field private mBody:Lorg/json/JSONObject;

.field private mMethod:Ljava/lang/String;

.field private mURLConnection:Ljava/net/HttpURLConnection;

.field private response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "param",
            "method",
            "service_id"
        }
    .end annotation

    const-string v0, "application/json"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-direct {p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;-><init>()V

    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iput-object p4, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    iget-object p4, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string p4, "Content-Type"

    invoke-virtual {p3, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string p4, "Accept"

    invoke-virtual {p3, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string p4, "Authorization"

    const-string v0, ""

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getJwtToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p5, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, " constructor?"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "method",
            "service_id",
            "body"
        }
    .end annotation

    const-string v0, "application/json"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-direct {v2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;-><init>()V

    iput-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iput-object p5, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mBody:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v0, "Authorization"

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getJwtToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p4, p5, v1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " constructor?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "method"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-direct {p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "constructor?"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "Client - execute()"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "JSON = "

    const-string v4, "bufferedReader end"

    const/4 v5, -0x1

    const-string v6, "bufferedReader start"

    const-string v7, "in is null"

    const/16 v8, 0xc8

    const-string v9, "UTF-8"

    const-string v10, " failed to getInputStream()"

    const/4 v11, 0x0

    const/16 v12, 0x80

    const-string v13, "failed to close()"

    if-nez v2, :cond_d

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bufferedWriter start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v15, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v2, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v15, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/BufferedWriter;->flush()V

    const-string v0, "bufferedWriter end"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iget-object v14, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->setMessage(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iget-object v14, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->setCode(I)V

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    move-object v8, v0

    if-eqz v8, :cond_2

    :try_start_3
    invoke-static {v6}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    new-array v0, v12, [C

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {v7, v0, v11, v12}, Ljava/io/BufferedReader;->read([CII)I

    move-result v9

    if-eq v9, v5, :cond_1

    invoke-virtual {v6, v0, v11, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->setBody(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v7

    move-object v14, v15

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    move-object v14, v15

    goto :goto_7

    :cond_2
    :try_start_5
    invoke-static {v7}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v14, 0x0

    :goto_2
    :try_start_6
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_16

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v14, v15

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v14, v15

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v14, v15

    const/4 v8, 0x0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v14, v15

    const/4 v8, 0x0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_3
    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_4
    const/16 v16, 0x0

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v2, 0x0

    :goto_5
    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_6
    const/16 v16, 0x0

    :goto_7
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    invoke-static {v10}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v14, :cond_5

    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_16

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    goto/16 :goto_16

    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_b
    if-eqz v14, :cond_8

    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_d

    :cond_8
    :goto_c
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_e

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :cond_b
    :goto_e
    throw v1

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_d
    :try_start_a
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->setMessage(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->setCode(I)V

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v8, :cond_e

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f

    :cond_e
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :goto_f
    move-object v2, v0

    if-eqz v2, :cond_10

    :try_start_b
    invoke-static {v6}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    new-array v0, v12, [C

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :goto_10
    :try_start_c
    invoke-virtual {v7, v0, v11, v12}, Ljava/io/BufferedReader;->read([CII)I

    move-result v8

    if-eq v8, v5, :cond_f

    invoke-virtual {v6, v0, v11, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_f
    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->setBody(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v14, v7

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object v14, v7

    goto :goto_17

    :catch_8
    move-exception v0

    move-object v14, v7

    goto :goto_15

    :cond_10
    :try_start_d
    invoke-static {v7}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const/4 v14, 0x0

    :goto_11
    if-eqz v14, :cond_11

    :try_start_e
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz v2, :cond_13

    :goto_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_16

    :catch_9
    invoke-static {v13}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    goto :goto_16

    :catchall_7
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    goto :goto_14

    :catchall_8
    move-exception v0

    const/4 v2, 0x0

    :goto_13
    const/4 v14, 0x0

    goto :goto_17

    :catch_b
    move-exception v0

    const/4 v2, 0x0

    :goto_14
    const/4 v14, 0x0

    :goto_15
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v14, :cond_12

    :try_start_10
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_12
    if-eqz v2, :cond_13

    goto :goto_12

    :cond_13
    :goto_16
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    return-object v0

    :catchall_9
    move-exception v0

    :goto_17
    if-eqz v14, :cond_15

    :try_start_11
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_18

    :catch_c
    invoke-static {v13}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :cond_16
    :goto_18
    throw v0
.end method
