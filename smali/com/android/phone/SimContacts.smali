.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSimCardId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 20
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 155
    new-instance v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 157
    .local v11, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v10, v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 158
    .local v10, name:Ljava/lang/String;
    iget v14, v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 159
    .local v14, phoneType:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, phoneNumber:Ljava/lang/String;
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, emailAddresses:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 163
    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, emailAddressArray:[Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v12, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v15, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 172
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v9, 0x0

    .line 173
    .local v9, myGroupsId:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 174
    const-string v15, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 175
    const-string v15, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 179
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 182
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    const-string v15, "data1"

    invoke-virtual {v2, v15, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 188
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 189
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 190
    const-string v15, "data2"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    const-string v15, "data1"

    invoke-virtual {v2, v15, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    const-string v15, "is_primary"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    if-eqz v6, :cond_2

    .line 196
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v4, v1, v7

    .line 197
    .local v4, emailAddress:Ljava/lang/String;
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 198
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 199
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 200
    const-string v15, "data2"

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 201
    const-string v15, "data1"

    invoke-virtual {v2, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 202
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 165
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #emailAddress:Ljava/lang/String;
    .end local v5           #emailAddressArray:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #myGroupsId:Ljava/lang/String;
    .end local v12           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    const/4 v5, 0x0

    .restart local v5       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 177
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v9       #myGroupsId:Ljava/lang/String;
    .restart local v12       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    sget-object v15, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 206
    :cond_2
    if-eqz v9, :cond_3

    .line 207
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 208
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 209
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    const-string v15, "group_sourceid"

    invoke-virtual {v2, v15, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 211
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_3
    :try_start_0
    const-string v15, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :goto_3
    return-void

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, e:Landroid/os/RemoteException;
    const-string v15, "SimContacts"

    const-string v16, "%s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 218
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 219
    .local v3, e:Landroid/content/OperationApplicationException;
    const-string v15, "SimContacts"

    const-string v16, "%s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private importOneSimContact(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0907c4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v1, "SimContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move the cursor to the position \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 263
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400d9

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x1020014

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onActivityCreated(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 352
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 353
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 354
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 355
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 356
    const/4 v2, 0x1

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 240
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 241
    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    .line 248
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 249
    .local v2, actionBar:Landroid/app/ActionBar;
    if-eqz v2, :cond_1

    .line 251
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 253
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 365
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 366
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 368
    .local v0, itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 372
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0901c2

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 374
    .end local v0           #itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 297
    const/4 v0, 0x2

    const v1, 0x7f0901c3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 298
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 402
    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 384
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 393
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 397
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 378
    invoke-direct {p0, p3}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 379
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 345
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_1
    return v4

    .line 313
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const/high16 v5, 0x400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 321
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    const v5, 0x7f0901c3

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, title:Ljava/lang/CharSequence;
    const v5, 0x7f0901c4

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, message:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-direct {v2, p0}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    .line 327
    .local v2, thread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 328
    const-string v4, "SimContacts"

    const-string v5, "cursor is null. Ignore silently."

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_0
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 332
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 335
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, -0x2

    const v7, 0x7f090025

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 337
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 338
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 339
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 341
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 302
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 303
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 307
    return-void

    .line 304
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    const-string v2, ""

    .line 273
    .local v2, strUri:Ljava/lang/String;
    const-string v1, ""

    .line 274
    .local v1, offset:Ljava/lang/String;
    const-string v3, "simSlot"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const-string v3, "simSlot"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/SimContacts;->mSimCardId:I

    .line 278
    :cond_0
    iget v3, p0, Lcom/android/phone/SimContacts;->mSimCardId:I

    if-eqz v3, :cond_1

    .line 279
    iget v3, p0, Lcom/android/phone/SimContacts;->mSimCardId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://icc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/adn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    const-string v3, "simSlot"

    iget v4, p0, Lcom/android/phone/SimContacts;->mSimCardId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    .end local v1           #offset:Ljava/lang/String;
    .end local v2           #strUri:Ljava/lang/String;
    :goto_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    const-string v3, "index"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 291
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 285
    :cond_3
    const-string v3, "content://icc/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method