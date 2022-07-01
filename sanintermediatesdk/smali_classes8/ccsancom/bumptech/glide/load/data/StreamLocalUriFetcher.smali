.class public Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;
.super Lccsancom/bumptech/glide/load/data/LocalUriFetcher;
.source "StreamLocalUriFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_CONTACT:I = 0x3

.field private static final ID_DISPLAY_PHOTO:I = 0x4

.field private static final ID_LOOKUP:I = 0x1

.field private static final ID_THUMBNAIL:I = 0x2

.field private static final URI_MATCHER:Lccsanandroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lccsanandroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lccsanandroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Lccsanandroid/content/UriMatcher;

    .line 39
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    const-string v2, "contacts/lookup/*"

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    const-string v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    const-string v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    const-string v2, "contacts/#/display_photo"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;

    .line 47
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;-><init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    .line 48
    return-void
.end method

.method private loadResourceFromUri(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;I)Ljava/io/InputStream;
    .locals 2
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "contentResolver"    # Lccsanandroid/content/ContentResolver;
    .param p3, "matchedUri"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 63
    packed-switch p3, :pswitch_data_0

    .line 78
    :pswitch_0
    invoke-virtual {p2, p1}, Lccsanandroid/content/ContentResolver;->openInputStream(Lccsanandroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 68
    invoke-static {p2, p1}, Lccsanandroid/provider/ContactsContract$Contacts;->lookupContact(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 69
    if-eqz p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Contact cannot be found"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;->openContactPhotoInputStream(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openContactPhotoInputStream(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p1, "contentResolver"    # Lccsanandroid/content/ContentResolver;
    .param p2, "contactUri"    # Lccsanandroid/net/Uri;

    .line 84
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 85
    invoke-static {p1, p2}, Lccsanandroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lccsanandroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected close(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 59
    return-void
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;->close(Ljava/io/InputStream;)V

    return-void
.end method

.method protected loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 2
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "contentResolver"    # Lccsanandroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 52
    sget-object v0, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Lccsanandroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Lccsanandroid/content/UriMatcher;->match(Lccsanandroid/net/Uri;)I

    move-result v0

    .line 53
    .local v0, "matchedUri":I
    invoke-direct {p0, p1, p2, v0}, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;->loadResourceFromUri(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/net/Uri;
    .param p2, "x1"    # Lccsanandroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;->loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
