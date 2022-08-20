{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red5\green61\blue204;\red0\green0\blue0;\red0\green0\blue255;
}
{\*\expandedcolortbl;;\cssrgb\c0\c33896\c83855;\cssrgb\c0\c0\c0;\cssrgb\c1680\c19835\c100000;
}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs48 \cf0 Architecture\
\pard\tx220\tx720\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\li720\fi-720\pardirnatural\partightenfactor0
\ls1\ilvl0
\f1\b0\fs28 \cf0 MVVM\
\ls1\ilvl0
\f0\b\fs48 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 Third-party libraries\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f1\b0\fs28 \cf0 No third-party libraries used\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs48 \cf0 Project structure
\f1\b0\fs28 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b \cf2  Networking layer \
	
\f1\b0 \cf3 used URLSession\cf0 \
   	used builder pattern\
	Created a middleware class for handle general errors.\

\f0\b \cf4  Service layer
\f1\b0 \cf0 \
	used a protocol oriented approach.\
	Easy to mock.\
	used combine for asynchronously return the response\

\f0\b \cf4  Use-case layer\
	
\f1\b0 \cf3 used SwiftUI for creating user interface\cf0 \
	used mvvm\
	used combine for data binding\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs48 \cf0 Unit testing\
	
\f1\b0\fs28 Created a protocol called \'92Mocakble\'92  to load mock json file\
	\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\
\
\
\
}